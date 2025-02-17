# creates a graph with arrows

arrow_chart <- function(domain, range) {
  if (length(domain) != length(range)) stop("Domain and range must be the same length")
  num <- length(domain)
  domain <- paste(domain, " ")
  range <- paste(" ", range)
  info <- data.frame(x = 0, y = num:1, xend = 1, yend = num:1, t1 = domain,
                     t2 = range)
  ggplot(info, aes(x = x, y = y, xend = xend, yend = yend)) + 
  geom_segment(arrow = arrow()) +
  geom_text(aes(label = t1), size = 7, hjust = 1, family = "mono") +
  geom_text(aes(x = xend, y = yend, label = t2), size = 7, hjust = 0, family = "mono") +
  lims(x = c(-1, 3), y = c(-4, num + 1)) +
  theme_void(fs) +
  theme(plot.title = element_text(hjust = .5))
}
