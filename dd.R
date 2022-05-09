library(igraph)
g <- erdos.renyi.game(30, 100, type = "gnm")
g <- set_vertex_attr(graph = g,name = "degree",value = degree(g))
g < set_vertex_attr(graph=g, name="dugum_adi",value=as.numeric(V(g)))
derece <- get.vertex.attribute(g,"degree")

plot(g, edge.arrow.size=0.02,vertex.size = derece*3, xlab = "Random Network: G(N,L) model")
write_graph(g,file="suat.csv",format = "edgelist")
#degree(g)
#degree_distribution(g)
dugum_adlari <- as.character(V(g))
dugum_dereceleri <- degree(g)
data.frame(dugum_adlari,dugum_dereceleri)


deg.dist <- degree_distribution(g, cumulative=T, mode="all")
plot(deg.dist)
plot(x=0:max(g), y=1-deg.dist, pch=19, cex=1.2, col="orange", xlab="Degree", ylab="Cumulative Frequency")


data = read.csv("https://raw.githubusercontent.com/melaniewalsh/sample-social-network-datasets/master/sample-datasets/game-of-thrones/got-edges.csv")
