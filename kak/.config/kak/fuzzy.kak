define-command -docstring ":edit with a fuzzy search" fuzzy-edit %{
    evaluate-commands %sh{
       FILE=$(rg --files | rofi -dmenu -i -p 'file');
       [[ -n "$FILE" ]] && printf "edit %s\\n" $FILE
    }
}

define-command -docstring ":buffer with a fuzzy search " fuzzy-buffer %{
   evaluate-commands %sh{
      BUFFER=$(printf "%s\\n" "${kak_buflist}" | rofi -dmenu -i -sep ' ' -p 'buffer');
      [[ -n "$BUFFER" ]] && printf "buffer %s\\n" $BUFFER
   }
}

