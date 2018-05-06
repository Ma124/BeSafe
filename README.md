[![JS.ORG](https://img.shields.io/badge/js.org-dns-ffb400.svg?style=flat-square)](http://js.org)
# BeSafe
BeSafe! provides client-side cryptography services

## Building
	./build --all

### ./build
`./build` and `build.bat` are a template for calling the underlying `build.py`.
The arguments:

Name | Help | Value 
------|------|-------
\-\-src-haml | source directory for all [.haml](http://haml.info/) files | haml 
\-\-src-scss | source directory for all [.scss](http://sass-lang.com/) files | scss 
\-\-src-coffee | source directory for all [.coffee](http://coffeescript.org/) files | coffeescript 
\-\-out-all | output directory for all files | docs
`%*` or `$@` | propagates all arguments to `build.py` | |

Command | Help
--------|-------
`./build -a` | build everything
`./build -H` | only build .haml
`./build -s` | only build .scss
`./build -c` | only build .coffee
`./build -f <FILE>` | only build a specific file

### build .py
`build.py` actually compiles the files and does all the hard work. *There are no project specific details in this file!* so you can just copy and paste it into another project. 
For help type: `build.py -h`

### haml .py
`haml.py` is a post processor for HAML/HTML.
Certain special tags are replaced by other tags.
You can specify these in `post_haml.ini`:
```ini
; post_haml.ini
[aliases]
; <copy> -> Copyright (c) ...
copy=Copyright (c) ...
; <bold>somestuff</bold> -> <b>somestuff!!!</b>
bold=py::"<b>" + m.group(1) + "!!!</b>"
```

```haml
-# foo.haml
%body
  %bold It works
  %include bar.haml
```

```haml
-# somepath/bar.haml
%copy
```

`build.py -i somepath foo.haml foo.html`

```html
<!-- foo.html -->
<body>
  <b>It works!!!</b>
  Copyright (c) ...
</body>
```

> Notes:
> * %include is a predefined macro
> * `py::` generates a python lambda with a match `m` as argument. (m.group(1) is the content of the tag)

<a href="http://js.org" target="_blank" title="JS.ORG | JavaScript Community">
<img src="http://logo.js.org/dark_horz.png" width="102" alt="JS.ORG Logo"/></a>
