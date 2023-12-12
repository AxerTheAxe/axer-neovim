-- This script is used to configure BufferStore, which
-- stores information related to buffers

require("bufferstore").setup {
  cursor_position = {
    enabled = true
  },
  no_name = {
    enabled = true
  }
}
