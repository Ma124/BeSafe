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

locked = false

window.gen = ->
  if locked
    alert("Already generating...")
  else
    $.post("https://api.random.org/json-rpc/1/invoke", {
      jsonrpc: "2.0"
      method: "generateIntegers"
      params:
        apiKey: "c2eb6071-6c2a-4d0a-8e70-6fa59bbb0980"
        n: document.getElementById('n').value
        min: document.getElementById('min')
        max: document.getElementById('max')
      id: 0
    })