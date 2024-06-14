Rails.application.configure do
  # branding
  config.lookbook.project_name = "ProjectOne"
  # config.lookbook.project_logo = "<svg>...</svg>"
  # config.lookbook.ui_favicon = "<svg>...</svg>"

  # previews
  config.lookbook.preview_collection_label = "UI Previews"
  config.lookbook.preview_paths = ["lookbook/previews"]

  # pages
  config.lookbook.page_collection_label = "Pages"
  config.lookbook.page_paths = []
  config.lookbook.page_route = "pages"
  config.lookbook.page_options = {
    footer: true,
    data: {
      brand_colors: {
        red: "#ff0000"
      }
    }
  }

  # other
  config.lookbook.preview_inspector.sidebar_panels = [:previews, :pages]
  config.lookbook.preview_disable_error_handling = true
  config.lookbook.debug_menu = true
  config.lookbook.page_nav_filter = true
  config.lookbook.preview_embeds.policy = "ALLOWALL"
  config.lookbook.preview_display_options = {
    theme: ["light", "dark"]
  }
  config.lookbook.markdown_options = {
    tables: false,
  }
end
