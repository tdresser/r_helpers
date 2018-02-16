myplotly <- function(plot, ...) {
  xlab <- paste("&nbsp;<br>", plot$labels$x ,sep="")
  ylab <- paste(plot$labels$y, "<br>&nbsp;", sep="")
  return(ggplotly(plot + labs(x = xlab, y = ylab), ..., tooltip = "text")) %>% 
    layout(margin=list(b=80, l=80, r=80), legend=list(x=1.05))
}