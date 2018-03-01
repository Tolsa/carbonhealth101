class Forest::Patient
  include ForestLiana::Collection

  collection :Patient
  action 'Ask for insurance'
  action 'Send check notification'
end
