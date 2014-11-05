function! ChangeTabSize(...)

    "" finds on .editorconfig file the indent size used on this project
    try
        let s:editor_config_file = readfile('.editorconfig')
        let s:tab_size = matchlist(s:editor_config_file, '\(indent_size*.=*.\)\(.\)')[2]
    catch
        "" or else just uses the actual configured indent size for vim
        let s:tab_size = &tabstop
    endtry

    "" gets argument value from user or default to 4 spaces
    if a:0 > 0
        let s:from_tab = a:1
    else
        let s:from_tab = 4
    end

    "" converts indent size to what we need to get rid of
    execute "set tabstop=" . s:from_tab
    execute "set shiftwidth=" . s:from_tab

    "" then we replace them for tabs
    set noexpandtab
    %retab!

    "" make indent size the correct value
    execute "set tabstop=" . s:tab_size
    execute "set shiftwidth=" . s:tab_size

    "" convert indent into spaces again
    set expandtab
    retab

endfunction

command! -nargs=* ChangeIndent call ChangeTabSize(<f-args>)

