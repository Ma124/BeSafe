// Generated by CoffeeScript 2.1.1
(function() {
  window.hash = function(v) {
    var md, out;
    md = eval("forge.md." + document.getElementById("algorithm").value.toLowerCase().replace("-", "").replace("/", ".sha") + ".create()");
    //md = forge.md.sha256.create()
    md.update(v);
    out = md.digest();
    document.getElementById("hex").value = out.toHex();
    console.log(forge.util.encode64(out));
    console.log(forge.util.decode64(out));
    return document.getElementById("b64").value = out;
  };

  window.regen_hash = function() {
    return hash(document.getElementById("input").value);
  };

}).call(this);

//# sourceMappingURL=hash.js.map
