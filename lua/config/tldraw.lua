local function open_or_create_tldr()
  local tex_file = vim.fn.expand('%:p')
  local dir = vim.fn.fnamemodify(tex_file, ':h')
  local tldr_file = dir .. '/drawings.tldr'

  local initial_content = [[
  {"tldrawFileFormatVersion":1,"schema":{"schemaVersion":2,"sequences":{"com.tldraw.store":4,"com.tldraw.asset":1,"com.tldraw.camera":1,"com.tldraw.document":2,"com.tldraw.instance":25,"com.tldraw.instance_page_state":5,"com.tldraw.page":1,"com.tldraw.instance_presence":5,"com.tldraw.pointer":1,"com.tldraw.shape":4,"com.tldraw.asset.bookmark":2,"com.tldraw.asset.image":4,"com.tldraw.asset.video":4,"com.tldraw.shape.group":0,"com.tldraw.shape.text":2,"com.tldraw.shape.bookmark":2,"com.tldraw.shape.draw":2,"com.tldraw.shape.geo":9,"com.tldraw.shape.note":7,"com.tldraw.shape.line":5,"com.tldraw.shape.frame":0,"com.tldraw.shape.arrow":5,"com.tldraw.shape.highlight":1,"com.tldraw.shape.embed":4,"com.tldraw.shape.image":3,"com.tldraw.shape.video":2,"com.tldraw.binding.arrow":0}},"records":[{"gridSize":10,"name":"","meta":{},"id":"document:document","typeName":"document"},{"id":"pointer:pointer","typeName":"pointer","x":30,"y":42,"lastActivityTimestamp":1720492277131,"meta":{}},{"meta":{},"id":"page:page","name":"Page 1","index":"a1","typeName":"page"},{"followingUserId":null,"opacityForNextShape":1,"stylesForNextShape":{"tldraw:dash":"solid"},"brush":null,"scribbles":[],"cursor":{"type":"default","rotation":0},"isFocusMode":false,"exportBackground":false,"isDebugMode":false,"isToolLocked":false,"screenBounds":{"x":0,"y":0,"w":960,"h":960},"insets":[false,false,false,false],"zoomBrush":null,"isGridMode":true,"isPenMode":false,"chatMessage":"","isChatting":false,"highlightedUserIds":[],"isFocused":true,"devicePixelRatio":1,"isCoarsePointer":false,"isHoveringCanvas":false,"openMenus":["main menu","main-menu-sub.file"],"isChangingStyle":false,"isReadonly":false,"meta":{},"duplicateProps":null,"id":"instance:instance","currentPageId":"page:page","typeName":"instance"},{"editingShapeId":null,"croppingShapeId":null,"selectedShapeIds":[],"hoveredShapeId":null,"erasingShapeIds":[],"hintingShapeIds":[],"focusedGroupId":null,"meta":{},"id":"instance_page_state:page:page","pageId":"page:page","typeName":"instance_page_state"},{"x":0,"y":0,"z":1,"meta":{},"id":"camera:page:page","typeName":"camera"}]}
  ]]

  if vim.fn.filereadable(tldr_file) == 0 then
    vim.fn.writefile({initial_content}, tldr_file)
  end

  -- Run the bash script with the current .tex file path
  os.execute('~/bash_scripts/launch-tldraw.sh ' .. vim.fn.shellescape(tex_file))
end

-- Ensure the function is accessible
_G.open_or_create_tldr = open_or_create_tldr

-- Autocommand to map the function to <leader>tl in .tex files
vim.api.nvim_create_autocmd("FileType", {
  pattern = "tex",
  callback = function()
    vim.api.nvim_buf_set_keymap(0, "n", "<leader>tl", ":lua open_or_create_tldr()<CR>", { noremap = true, silent = true })
  end
})

