window.hash = (v) ->
  md = forge.hmac.create()
  md.start('sha1', 'a')
  md.update(v)
  out = md.digest()
  document.getElementById("hex").value = out.toHex()
  document.getElementById("b64").value = forge.util.encode64(out.data)

window.regen_hash = ->
  hash(document.getElementById("input").value)
