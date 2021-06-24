if (!requireNamespace("remotes")) install.packages("remotes")
remotes::install_github("rstudio/blogdown")


library(blogdown)
new_site(theme = "wowchemy/starter-academic")

blogdown::new_post(title = "Hi Hugo", 
                   ext = '.Rmarkdown', 
                   subdir = "post")
serve_site()
file.edit(".gitignore")
blogdown::check_gitignore()
rstudioapi::navigateToFile("config.yaml", line = 3)
blogdown::config_netlify()
blogdown::check_netlify()
blogdown::check_hugo()
rstudioapi::navigateToFile("config/_default/params.yaml")
rstudioapi::navigateToFile("config/_default/params.yaml")
rstudioapi::navigateToFile("config/_default/menus.yaml")
