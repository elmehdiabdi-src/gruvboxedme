" -----------------------------------------------------------------------------
" File: gruvboxed.vim
" Description: Retro groove color scheme for Airline
" Source: https://github.com/CrispyBaccoon/gruvboxed
" -----------------------------------------------------------------------------

let g:airline#themes#gruvboxed#palette = {}

function! airline#themes#gruvboxed#refresh()

  let M0 = airline#themes#get_highlight('Identifier')
  let accents_group = airline#themes#get_highlight('Special')
  let modified_group = [M0[0], '', M0[2], '', '']
  let warning_group = airline#themes#get_highlight2(['Normal', 'bg'], ['Question', 'fg'])
  let error_group = airline#themes#get_highlight2(['Normal', 'bg'], ['WarningMsg', 'fg'])

  let s:N1 = airline#themes#get_highlight2(['Normal', 'bg'], ['Constant', 'fg'])
  let s:N2 = airline#themes#get_highlight2(['GruvboxFg3', 'fg'], ['GruvboxBg2', 'fg'])
  let s:N3 = airline#themes#get_highlight2(['GruvboxPurple', 'fg'], ['GruvboxBg1', 'fg'])
  let g:airline#themes#gruvboxed#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)
  let g:airline#themes#gruvboxed#palette.normal_modified = { 'airline_c': modified_group }
  let g:airline#themes#gruvboxed#palette.normal.airline_warning = warning_group
  let g:airline#themes#gruvboxed#palette.normal_modified.airline_warning = warning_group
  let g:airline#themes#gruvboxed#palette.normal.airline_error = error_group
  let g:airline#themes#gruvboxed#palette.normal_modified.airline_error = error_group

  let s:I1 = airline#themes#get_highlight2(['Normal', 'bg'], ['Identifier', 'fg'])
  let s:I2 = s:N2
  let s:I3 = airline#themes#get_highlight2(['Identifier', 'fg'], ['GruvboxBg1', 'fg'])
  let g:airline#themes#gruvboxed#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
  let g:airline#themes#gruvboxed#palette.insert_modified = g:airline#themes#gruvboxed#palette.normal_modified
  let g:airline#themes#gruvboxed#palette.insert.airline_warning = g:airline#themes#gruvboxed#palette.normal.airline_warning
  let g:airline#themes#gruvboxed#palette.insert_modified.airline_warning = g:airline#themes#gruvboxed#palette.normal_modified.airline_warning
  let g:airline#themes#gruvboxed#palette.insert.airline_error = g:airline#themes#gruvboxed#palette.normal.airline_error
  let g:airline#themes#gruvboxed#palette.insert_modified.airline_error = g:airline#themes#gruvboxed#palette.normal_modified.airline_error

  let s:R1 = airline#themes#get_highlight2(['Normal', 'bg'], ['Structure', 'fg'])
  let s:R2 = s:I2
  let s:R3 = s:I3
  let g:airline#themes#gruvboxed#palette.replace = airline#themes#generate_color_map(s:R1, s:R2, s:R3)
  let g:airline#themes#gruvboxed#palette.replace_modified = g:airline#themes#gruvboxed#palette.normal_modified
  let g:airline#themes#gruvboxed#palette.replace.airline_warning = g:airline#themes#gruvboxed#palette.normal.airline_warning
  let g:airline#themes#gruvboxed#palette.replace_modified.airline_warning = g:airline#themes#gruvboxed#palette.normal_modified.airline_warning
  let g:airline#themes#gruvboxed#palette.replace.airline_error = g:airline#themes#gruvboxed#palette.normal.airline_error
  let g:airline#themes#gruvboxed#palette.replace_modified.airline_error = g:airline#themes#gruvboxed#palette.normal_modified.airline_error

  let s:V1 = airline#themes#get_highlight2(['Normal', 'bg'], ['Structure', 'fg'])
  let s:V2 = s:N2
  let s:V3 = airline#themes#get_highlight2(['Structure', 'fg'], ['GruvboxBg1', 'fg'])
  let g:airline#themes#gruvboxed#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
  let g:airline#themes#gruvboxed#palette.visual_modified = { 'airline_c': [ s:V3[0], '', s:V3[2], '', '' ] }
  let g:airline#themes#gruvboxed#palette.visual.airline_warning = g:airline#themes#gruvboxed#palette.normal.airline_warning
  let g:airline#themes#gruvboxed#palette.visual_modified.airline_warning = g:airline#themes#gruvboxed#palette.normal_modified.airline_warning
  let g:airline#themes#gruvboxed#palette.visual.airline_error = g:airline#themes#gruvboxed#palette.normal.airline_error
  let g:airline#themes#gruvboxed#palette.visual_modified.airline_error = g:airline#themes#gruvboxed#palette.normal_modified.airline_error

  let s:IA = airline#themes#get_highlight2(['TabLine', 'fg'], ['GruvboxBg1', 'fg'])
  let g:airline#themes#gruvboxed#palette.inactive = airline#themes#generate_color_map(s:IA, s:IA, s:IA)
  let g:airline#themes#gruvboxed#palette.inactive_modified = { 'airline_c': modified_group }

  let g:airline#themes#gruvboxed#palette.accents = { 'red': accents_group }

  let s:TF = airline#themes#get_highlight2(['Normal', 'bg'], ['Normal', 'bg'])
  let g:airline#themes#gruvboxed#palette.tabline = {
    \ 'airline_tab':  s:N2,
    \ 'airline_tabsel':  s:N1,
    \ 'airline_tabtype':  s:V1,
    \ 'airline_tabfill':  s:TF,
    \ 'airline_tabhid':  s:IA,
    \ 'airline_tabmod':  s:I1
    \ }

endfunction

call airline#themes#gruvboxed#refresh()

" vim: set sw=2 ts=2 sts=2 et tw=80 ft=vim fdm=marker:
