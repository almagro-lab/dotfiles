return {
  {
    'mrcjkb/rustaceanvim',
    version = '^5', 
    lazy = false, 
    init = function()
      vim.g.rustaceanvim = function()
        return {
          server = {
            on_attach = function(client, bufnr)
              vim.lsp.inlay_hint.enable(true, { bufnr = bufnr })

              vim.keymap.set("n", "<leader>ca", function() vim.cmd.RustLsp('codeAction') end, { desc = "Rust Code Action", buffer = bufnr })
              vim.keymap.set("n", "K", function() vim.cmd.RustLsp('hover') end, { desc = "Rust Hover", buffer = bufnr })
              vim.keymap.set("n", "<leader>rd", function() vim.cmd.RustLsp('renderDiagnostic') end, { desc = "Rust Render Diagnostics", buffer = bufnr })
            end,
            default_settings = {
              ['rust-analyzer'] = {
                checkOnSave = {
                  command = "clippy",
                },
                cargo = {
                  allFeatures = true,
                },
              },
            },
          },
        }
      end
    end,
  }
}
