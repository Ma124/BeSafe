// Generated by CoffeeScript 2.1.1
(function() {
  window.hash = function(v) {
    var md, out;
    md = forge.hmac.create();
    md.start('sha1', 'a');
    md.update(v);
    out = md.digest();
    document.getElementById("hex").value = out.toHex();
    return document.getElementById("b64").value = forge.util.encode64(out.data);
  };

  window.regen_hash = function() {
    return hash(document.getElementById("input").value);
  };

}).call(this);

//# sourceMappingURL=mac.js.map
