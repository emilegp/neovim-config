return {
  {
    "lervag/vimtex",
    lazy = false, -- we don't want to lazy load VimTeX
    config = function()
      -- VimTeX configuration for Zathura
      vim.g.vimtex_view_method = 'zathura'

      -- Ensure the PDF is generated in the same directory as the .tex file
      vim.g.vimtex_compiler_latexmk = {
        build_dir = '', -- Set the build directory to the same as the .tex file's directory
        options = {
          '-pdf',
          '-shell-escape',
          '-verbose',
          '-file-line-error',
          '-interaction=nonstopmode',
          '-synctex=1'
        },
      }

      -- Optional: Enable continuous compilation mode
      vim.g.vimtex_compiler_latexmk_continuous = 1

      -- Set the viewer options
      vim.g.vimtex_view_general_viewer = 'zathura'

      -- Disable forward search on start
      vim.g.vimtex_view_forward_search_on_start = 0

      -- Customize the clean extensions to include .fls
      vim.g.vimtex_clean_extensions = {
        'aux', 'log', 'out', 'toc', 'fls', 'fdb_latexmk', 'synctex.gz'
      }

      -- Exclude the PDF from cleaning
      vim.g.vimtex_clean_keep = {'pdf'}

      -- Enable cleaning for the specified extensions
      vim.g.vimtex_clean_enabled = 1

      -- Create a custom command to clean the specified extensions
      vim.api.nvim_exec([[
        function! CustomVimtexClean() abort
          let l:extensions = ['aux', 'log', 'out', 'toc', 'fls', 'fdb_latexmk', 'synctex.gz']
          let l:texdir = expand('%:p:h') " Get the directory of the current .tex file
          for ext in l:extensions
            let l:files = globpath(l:texdir, '*.' . ext, 0, 1)
            if empty(l:files)
              echo 'No files found for extension: ' . ext
            else
              for file in l:files
                echo 'Removing file: ' . file
                call delete(file)
              endfor
            endif
          endfor
          echo 'Custom clean completed.'
        endfunction

        command! VimtexCustomClean call CustomVimtexClean()

        " Map <leader>lD to the custom clean function
        nmap <leader>lD :VimtexCustomClean<CR>
      ]], false)

      -- Function to run the Python script to move and rename PNG files
      vim.api.nvim_exec([[
        function! MovePngFiles() abort
          let tex_file = expand('%:p')
          let command = 'python3 /home/emilegp/bash_scripts/move_png.py ' . shellescape(tex_file)
          call system(command)
        endfunction

        " Map <leader>tf to the MovePngFiles function
        nmap <leader>tf :call MovePngFiles()<CR>
      ]], false)

      -- Autosave configuration
      vim.api.nvim_exec([[
        augroup AutoSave
          autocmd!
          " Save on leaving insert mode
          autocmd InsertLeave * if &modifiable && &filetype == 'tex' && &modified | silent! write | endif
          " Save on losing focus
          autocmd FocusLost * if &modifiable && &filetype == 'tex' && &modified | silent! write | endif
          " Save on leaving normal mode
          autocmd BufLeave * if &modifiable && &filetype == 'tex' && &modified | silent! write | endif
          " Save on text changed events in normal and visual mode
          autocmd TextChanged * if &modifiable && mode() !~ 'i' && &filetype == 'tex' && &modified | silent! write | endif
        augroup END
      ]], false)
    end,
  },
}
