window.hash = (v) ->
  md = eval("forge.md." + document.getElementById("algorithm").value.toLowerCase().replace("-", "").replace("/", ".sha") + ".create()")
  md.update(v)
  out = md.digest()
  document.getElementById("hex").value = out.toHex()
  document.getElementById("b64").value = forge.util.encode64(out.data)

window.regen_hash = ->
  hash(document.getElementById("input").value)
