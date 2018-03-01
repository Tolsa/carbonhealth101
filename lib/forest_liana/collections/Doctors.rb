class Forest::Doctor
  include ForestLiana::Collection

  collection :Doctor
  action 'Ban', fields: [{
    field: 'Comment',
    type: 'String',
    description: "Type the reason why this doctor will be banned",
    isRequired: true,
    defaultValue: 'This is the reason why...',
    widget: 'text area'
  }]
  action 'Unban'
end
