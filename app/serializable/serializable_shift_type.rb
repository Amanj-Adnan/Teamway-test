class SerializableShiftType < JSONAPI::Serializable::Resource
  type 'shift_types'
  attribute :type_name
  attribute :form_to
end
