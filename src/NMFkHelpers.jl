toupper(x::String, i=1) = x[1:i-1] * uppercase(x[i:i]) * x[i+1:end]

function maximumnan(X, c...; kw...)
	maximum(X[.!isnan.(X)], c...; kw...)
end

function minimumnan(X, c...; kw...)
	minimum(X[.!isnan.(X)], c...; kw...)
end

function sumnan(X, c...; kw...)
	sum(X[.!isnan.(X)], c...; kw...)
end

function ssqrnan(X)
	sum(X[.!isnan.(X)].^2)
end

function vecnormnan(X)
	vecnorm(X[.!isnan.(X)])
end

function cornan(x, y)
	isn = isnan.(x) .| isnan.(y)
	cov(x[.!isn], y[.!isn])
end