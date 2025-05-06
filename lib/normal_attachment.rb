# frozen_string_literal: true

module NormalAttachment
  module Image
    extend ActiveSupport::Concern

    included do
      has_one_attached :attachment
      validates :attachment, presence: true
    end

    # Solidus Admin/Backend requirements:
    # - attachment name must be 'attachment'
    # - a :url method defined on the model instances that takes options (size)
    # - a class method :attachment_definitions that returns a hash in this format (apparently not used)

    def url spree_options
      attachment.url
    end

    class_methods do
      def attachment_definitions
        {attachment: {styles: {original: "48x48>"}, default_stle: "original"}}
      end
    end
  end
end
