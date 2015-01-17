# LinkDispatch


Set LinkDispatch as your default Browser, and when you click an URL in some external application, this app will be run, and it will call a script named `~/.linkdispatch`, and pass the clicked URL as the first argument.

Contents of `.linkdispatch` script should be like the following code:

```bash
#!/bin/bash

URL=$1

function open_url() {
  BROWSER=$1
  open "$URL" -a "$BROWSER"
}

if echo "$URL" | grep -q localhost
then
  open_url "Google Chrome"
elif echo "$URL" | grep -q mywebsite.com
then
  open_url "Google Chrome"
else
  open_url "Safari"
fi
```

If you want a pop menu for maunally browser selection when you click a link, you may wanna check this app:

[MultiBrowser](https://sites.google.com/site/tesseractsoftware/multibrowser)