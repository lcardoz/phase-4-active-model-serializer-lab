class AuthorPostSerializer < ActiveModel::Serializer
  attributes :title, :short_content

  belongs_to :author
  has_many :tags

  def short_content
    "#{object.content.slice(0, 40)...}"
  end
end
