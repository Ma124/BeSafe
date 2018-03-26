window.hash = (v) ->
  md = eval("forge.md." + document.getElementById("algorithm").value.toLowerCase().replace("-", "").replace("/", ".sha") + ".create()")
  #md = forge.md.sha256.create()
  md.update(v)
  out = md.digest()
  document.getElementById("hex").value = out.toHex()
  console.log(forge.util.encode64(out))
  console.log(forge.util.decode64(out))
  document.getElementById("b64").value = out

window.regen_hash = ->
  hash(document.getElementById("input").value)

