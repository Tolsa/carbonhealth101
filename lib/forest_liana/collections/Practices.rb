class Forest::Practice
  include ForestLiana::Collection

  collection :Practice
  action 'Schedule onboard call', fields: [{
    field: 'Date',
    type: 'Date',
  }]
  action 'Send doclist reminder'


  field :doctors, type: 'Number' do
    object.doctors.count
  end

end
