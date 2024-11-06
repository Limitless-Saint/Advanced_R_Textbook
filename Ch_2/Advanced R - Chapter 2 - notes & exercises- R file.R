#Advanced R - Chapter 2 - notes & exercises- R file

set.seed(1014)  #used for all chapters


library(lobstr)


df <- data.frame(runif(3), runif(3))
names(df) <- c(1, 2)

df$`3` = df$`1` + df$`2`


x <- c(1, 2, 3)
y = x

obj_addr(x)
obj_addr(y)

# Sec 2.2 - Exercises

# 2
obj_addr(mean)
obj_addr(base::mean)
obj_addr(get("mean"))
obj_addr(evalq(mean))
obj_addr(match.fun("mean"))

# Sec 2.3 

y[[3]] = 4
obj_addr(y)

x = 1:3
tracemem(x)
y = x
y[[3]] = 5
tracemem(y)

z = x
z[[3]] = 7

untracemem(x)

f <- function(a) {
  a
}
x <- c(1, 2, 3)
tracemem(x)

z = f(x)
tracemem(z)

untracemem(x)


l1 = list(1,2,3)
l2 = l1

l2[[3]] = 4

ref(l1,l2)


x <- c(1L, 2L, 3L)
tracemem(x)

x[[3]] <- 4