class SerializableShift < JSONAPI::Serializable::Resource
  type 'shifts'
  attribute :working_date
  attribute :worker_id
  attribute :shift_type_id
end
