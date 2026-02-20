# WhatUrl
WhatUrl is a simple Lua script to parse an exported WhatsApp for urls and get the who sent it and when.

It was originally made as both a small exercise and to find out who, between a friend of mine and I, had sent the other more urls.

I've only uploaded it here because I want to learn how to use github and what better way to do it than creating a repository for a small and fairly simple old project?

## Usage
1. Export a chat from WhatsApp, this can only be done using WhatsApp's phone app
    ```
    exported_chat_file_name.txt:
        1/12/25, 12:00 - foo: Hi there!
        1/12/25, 12:03 - foo: Check out this cool website https://example.com
        2/12/25, 17:50 - bar: Cool website!!
        2/12/25, 17:55 - bar: Although, https://example.org, is cooler
2. In the terminal, execute `lua WhatUrl.lua doo/bar/exported_chat_file_name.txt` 
   
4. Now you have an `output.csv` whose contents are:
    ```
    1/12/25,12:03,foo,https://example.com
    2/12/25,17:55,bar,https://example.org
    ```
    
## Disclaimer
  This project is not affiliated, associated, authorized, endorsed by, or in any way officially connected with WhatsApp LLC, Meta Platfroms. Inc. or any of its subsidiaries or its affiliates."WhatsApp" as well as related names, marks, emblems and images are registered trademarks of their respective owners.
