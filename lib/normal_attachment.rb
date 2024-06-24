# frozen_string_literal: true

module NormalAttachment
  module Image
    extend ActiveSupport::Concern

    included do
      validates :attachment, presence: true
      has_one_attached :attachment
    end

    # Para agradar o painel do admin:

    # 0. o nome do has_one_attched ser attachment

    # 1. poder chamar url direto no modelo e nao no attachment
    def url opcoes_do_spree
        puts "spree chamou url com esses argumetnos:"
        puts opcoes_do_spree.inspect
        attachment.url
    end

    # 2. pegar uma lista de estilos na classe Spree::Image
    class_methods do
      def attachment_definitions
        return {:attachment => {styles: { original: '48x48>'}, default_stle: "original"}}
      end
    end
  end
end
