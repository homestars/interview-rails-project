class SerializableTask < JSONAPI::Serializable::Resource
  type 'tasks'
  attribute :name
  attribute :created_at
  attribute :updated_at
  has_many :questions
end
