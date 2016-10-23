def retrive_memory(session, key)
  @sess = JSON.parse(session)
  @sess[key]
end
