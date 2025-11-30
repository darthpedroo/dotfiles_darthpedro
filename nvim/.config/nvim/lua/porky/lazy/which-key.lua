return {
  "folke/which-key.nvim",    -- El nombre del repositorio del plugin
  event = "VeryLazy",         -- Cuándo cargar el plugin (cuando sea necesario)
  opts = {                    -- Opciones de configuración
    -- Aquí puedes agregar tus configuraciones personalizadas
  },
  keys = {                    -- Las combinaciones de teclas que deseas asociar
    {
      "<leader>?",            -- Esta es la tecla para abrir el mapa de teclas
      function() 
        require("which-key").show({ global = false })  -- Mostrar las teclas locales
      end,
      desc = "Buffer Local Keymaps (which-key)",        -- Descripción para mostrar en el mapa de teclas
    },
  },
}

