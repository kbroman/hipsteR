get_help_url = function(name){
    pkg = gsub("package:", "", find(name))
    
    help_search_data = readRDS(file.path(.libPaths()[[1]], pkg, "Meta", "hsearch.rds"))
    
    row = which(name == help_search_data[[2]][,1])
    paste0(
        "https://stat.ethz.ch/R-manual/R-devel/library/",
        pkg,
        "/html/",
        help_search_data[[1]][as.integer(help_search_data[[2]][row, "ID"]), "Topic"][[1]],
        ".html"
    )
}
