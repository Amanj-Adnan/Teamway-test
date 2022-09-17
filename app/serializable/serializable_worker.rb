class SerializableWorker < JSONAPI::Serializable::Resource
  type 'workers'
  attribute :name
  attribute :age

end
