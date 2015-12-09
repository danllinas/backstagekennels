class Post < ActiveRecord::Base
  validates :image, presence: true
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
  has_attached_file :image, styles: { medium: "640x600" },
      url: ":s3_domain_url",
      storage: :fog,
      fog_credentials: {
        provider: "AWS",
        aws_access_key_id: "AKIAJBQNW5KGYXCQ5A2Q",
        aws_secret_access_key: "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"
      },
      fog_directory: "backstagekennels-dev"
end
