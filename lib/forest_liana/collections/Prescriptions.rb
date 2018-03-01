class Forest::Prescription
  include ForestLiana::Collection

  collection :Prescription

  action 'Reminder of pending order'
  action 'Notice to pharmacist'


  field :delivered, type: 'String' do

    alldrugs = Bundledrug.where(prescription_id: object.id)
    if alldrugs.count == alldrugs.to_a.select(&:IsDelivered).length && alldrugs != []
      'all sent'
    else
      'not sent yet'
    end

  end

  field :received, type: 'Boolean' do
    alldrugs = Bundledrug.where(prescription_id: object.id)
    if alldrugs.count == alldrugs.to_a.select(&:IsReceived).length && alldrugs != []
      true
    elsif alldrugs == []
      false
    else
      false
    end
  end

  belongs_to :patient, reference: 'Patient.id' do
    object.appointment.patient # returns a "DeliveryMan" Model.
  end

  belongs_to :doctor, reference: 'Doctor.id' do
    object.appointment.doctor # returns a "DeliveryMan" Model.
  end


  segment 'Drugs sent' do
    delivered_prescriptions = Bundledrug
      .where(IsDelivered: true)
      .map(&:prescription_id)
    { id: delivered_prescriptions }
  end

    segment 'Drugs received' do
    received_prescriptions = Bundledrug
      .where(IsReceived: true)
      .map(&:prescription_id)
    { id: received_prescriptions }
  end
end


