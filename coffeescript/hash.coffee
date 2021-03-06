###
  BeSafe! - For all your security needs
  Copyright (C) 2018  Ma124

  This program is free software: you can redistribute it and/or modify
  it under the terms of the GNU General Public License as published by
  the Free Software Foundation, either version 3 of the License, or
  (at your option) any later version.

  This program is distributed in the hope that it will be useful,
  but WITHOUT ANY WARRANTY; without even the implied warranty of
  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  GNU General Public License for more details.

  You should have received a copy of the GNU General Public License
  along with this program.  If not, see <http://www.gnu.org/licenses/>.
###

window.hash = (v) ->
  md = eval("forge.md." + document.getElementById("algorithm").value.toLowerCase().replace("-", "").replace("/", ".sha") + ".create()")
  md.update(v)
  out = md.digest()
  document.getElementById("hex").value = out.toHex()
  document.getElementById("b64").value = forge.util.encode64(out.data)
  #document.getElementById("b91").value = base91.encode(out.data)


window.regen_hash = ->
  hash(document.getElementById("input").value)
