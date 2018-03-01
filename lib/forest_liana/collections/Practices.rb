class Forest::Practice
  include ForestLiana::Collection
  collection :Practice

  action 'Schedule onboard call', fields: [{
    field: 'Date',
    type: 'Date',
  }]
  action 'Send doclist reminder'

  field :staff, type: 'Number' do
    object.doctors.count
  end
end
