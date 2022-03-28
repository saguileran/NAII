### A Pluto.jl notebook ###
# v0.18.4

using Markdown
using InteractiveUtils

# ╔═╡ 054454a0-ad17-11ec-3385-29ec65f21c33
begin
	using PlutoUI
	TableOfContents(title="📚 Table of Contents", indent=true, depth=4, aside=true)
end

# ╔═╡ 72ea7f70-ad12-11ec-32b3-7fcfb7de94a9
md"
# Homework 2 

"


# ╔═╡ b52c7910-ad12-11ec-3836-73322a4d09bf
md"
## 1.T
Use the Galerkin method with the functions ${\phi_1, \phi_2} = \{x^2-2x, x(x-1)^2\}$ to get an aproximated solution (two parameters) of the BVP solution

```math
\frac{d^2 u}{dx^2} + u = 1; \qquad 0<x<1\qquad \text{with} \quad u(0)=0, \qquad \frac{du}{dx}=0 \quad \text{in} \quad x=1
```
Find the residual error $\epsilon(x)= d^2u_n/dx^2+u_n-1$. Plot in a single plane the aproximate solution $u_n$, the exact solution $u=-\cos(x)-\tan(1)\sin(x)+1$ and the residual error $\epsilon(x)$
"

# ╔═╡ fe3a24d0-ad13-11ec-127e-b99341ce2d42
md"
## 2.T 
Prove that $\ddot{u}$ is a solution of the variational problem. Find $u\in H_0^1(I)$ such that

```math
\int_I u'v' dx = \in_I fv, \qquad \forall v\in H_0^1(I)
```
if and only if $\ddot{u}$ is a functional minimizer.

```math
F(w) = \frac{1}{2} \int_I (w')^2 - \int_I fw dx
```
over the space $H_0^1(I)$
"

# ╔═╡ fec1f270-ad13-11ec-1dc6-47c977b59d4d
md"""
## 3.TP

Consider the problem with Robin conditions

```math
-u''+2u=4+2x^3, \qquad x\in I = (-1,1)
```
```math
u'(-1)=\frac{\alpha}{\kappa}(u(-1)+1)
```
```math
u'(1) = -\frac{\alpha}{\kappa} {\kappa}(u(1)+1)
```

a) Write the weak formulation correspondingt to the boundary value problem $(e)-(3)$ 

b) Prove tue existence and uniquiness of the weak solution.

c) To discretize the weak problem consider the picewise lineal polynomial spaces and write exactly the rigid matrix, load mass and vector.

d) Using the result find vefore, part c., do the modifications to the Matlab codes and solve the problem taking $\alpha =2$ and $\kappa=1$. Plot the numerical solution and compare it with the exact solution $u(x)=1-x^2$.

e) Solve the equation with Dirichlet homogeneous boundary condtions. Plot and compare it with the exact solution $u(x)=1-x^2$.

f) Plot the error made in each mesh point $\left( |u(x_i)-u_h(x_i)|,i=0,1,...,m  \right)$ of the finded solutions in the items d) and 
"""


# ╔═╡ 0c0cd9d0-ad15-11ec-38b8-596132c52440
md"
## 4.TP 

**Bar Deflection**

Consider a beam fix in a wall in both extrems like in the figure. The strcutre, of lenght $L$ is hold in a distributed load $P [Kg \; m^{-1}$ that vary along the $x$ coordinate. Furthermore, supposse that the beam has a rectangular uniform section of width $r$ and depth $s$, inertial moment $J = rs^3/12 [m^4]$ and Young module $E[kgm^{-2}]$.

The beam deflection, suposing small displacements, is describe by the 4th order differential equation
```math
(EJu''(x))'' = P(x), \qquad \qquad u'(0)=u'(L)=0,
```
where the $u=u(x)$ denote the vertical displacement. The following boundary conditions


model the fix beam behaviour in both extrems.

a. Write the weak formulation corresponding to the boundary value problem $(4)-(5)
b. Prove the existence and uniqueness of the weak solution.

To discretize the weak problem we shuold aproximate the space $H_0^2([0,1])$ by a picewise finite dimensional cubic polynomial space

```math
\mathcal{H}_h := \{ \phi \in C^1([0,L]):\quad \phi\Big|_{I_i} \in \mathbb{P}_3(I_i) \quad i=1,2,...,N; 
```
```math
\phi(0)= \phi(1)=0 \quad \text{and} \quad  \phi_x(0)=\phi_x(1)=0 \}
```

where $0 <c_0<x_1<\cdots < x_N =L, \; I_i = (x_{i-1},x_), \; h_i=x_i-x_{i-1}, \; h:=\text{max}_{i=1,...,N}$ and $\mathbb{P}_3(I_i)$ denote the set of all the polynomials over $I_i$ of order less or equal to $3$.

With the goal to build a base for $\mathcal{H}_h$, let's asociate a each inner node $x_k,\; k= 1,...,N-1$ a support $I_k \cup I_{k+1}$ and two functions $\zeta_i$ and $\eta_i$ such that

```math
\zeta_i(x_k) = \delta_{ik}, \qquad \zeta_i'(x_k)=0
```
```math
\eta_i(x_k) = 0, \qquad \eta_i'(x_k)=\delta_{ik}
```

c. Use the previous conditions to determine the $\zeta_i$ and $\eta_i$ explicit formulas and plot them.

d. Write $u_h$ as a linear combination of the base $\zeta_i$ and $\eta_i$ where $i=1,...,N-1$.

e. Consider the discrete weak formulation. Indicate wich are the unknowns.

f. Find the matrix components of the lineal equation system that gives the finite elemebt discretization.

g. Solve the lineal equation systems useing for $N=25,\;50,\;100$ and $200$ elements. Plot the solution. use the folowwing dates: $EJ =1$, $P(x)=1$, and $L=1$.
"

# ╔═╡ feda3562-ad13-11ec-3996-df8b9c71b329
md"

"

# ╔═╡ fef02e60-ad13-11ec-01c9-176af939a84e
md"
```math
```

"

# ╔═╡ ff04eee0-ad13-11ec-2231-99e0a6f74daf


# ╔═╡ 00000000-0000-0000-0000-000000000001
PLUTO_PROJECT_TOML_CONTENTS = """
[deps]
PlutoUI = "7f904dfe-b85e-4ff6-b463-dae2292396a8"

[compat]
PlutoUI = "~0.7.37"
"""

# ╔═╡ 00000000-0000-0000-0000-000000000002
PLUTO_MANIFEST_TOML_CONTENTS = """
# This file is machine-generated - editing it directly is not advised

julia_version = "1.7.2"
manifest_format = "2.0"

[[deps.AbstractPlutoDingetjes]]
deps = ["Pkg"]
git-tree-sha1 = "8eaf9f1b4921132a4cff3f36a1d9ba923b14a481"
uuid = "6e696c72-6542-2067-7265-42206c756150"
version = "1.1.4"

[[deps.ArgTools]]
uuid = "0dad84c5-d112-42e6-8d28-ef12dabb789f"

[[deps.Artifacts]]
uuid = "56f22d72-fd6d-98f1-02f0-08ddc0907c33"

[[deps.Base64]]
uuid = "2a0f44e3-6c83-55bd-87e4-b1978d98bd5f"

[[deps.ColorTypes]]
deps = ["FixedPointNumbers", "Random"]
git-tree-sha1 = "024fe24d83e4a5bf5fc80501a314ce0d1aa35597"
uuid = "3da002f7-5984-5a60-b8a6-cbb66c0b333f"
version = "0.11.0"

[[deps.CompilerSupportLibraries_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "e66e0078-7015-5450-92f7-15fbd957f2ae"

[[deps.Dates]]
deps = ["Printf"]
uuid = "ade2ca70-3891-5945-98fb-dc099432e06a"

[[deps.Downloads]]
deps = ["ArgTools", "LibCURL", "NetworkOptions"]
uuid = "f43a241f-c20a-4ad4-852c-f6b1247861c6"

[[deps.FixedPointNumbers]]
deps = ["Statistics"]
git-tree-sha1 = "335bfdceacc84c5cdf16aadc768aa5ddfc5383cc"
uuid = "53c48c17-4a7d-5ca2-90c5-79b7896eea93"
version = "0.8.4"

[[deps.Hyperscript]]
deps = ["Test"]
git-tree-sha1 = "8d511d5b81240fc8e6802386302675bdf47737b9"
uuid = "47d2ed2b-36de-50cf-bf87-49c2cf4b8b91"
version = "0.0.4"

[[deps.HypertextLiteral]]
git-tree-sha1 = "2b078b5a615c6c0396c77810d92ee8c6f470d238"
uuid = "ac1192a8-f4b3-4bfe-ba22-af5b92cd3ab2"
version = "0.9.3"

[[deps.IOCapture]]
deps = ["Logging", "Random"]
git-tree-sha1 = "f7be53659ab06ddc986428d3a9dcc95f6fa6705a"
uuid = "b5f81e59-6552-4d32-b1f0-c071b021bf89"
version = "0.2.2"

[[deps.InteractiveUtils]]
deps = ["Markdown"]
uuid = "b77e0a4c-d291-57a0-90e8-8db25a27a240"

[[deps.JSON]]
deps = ["Dates", "Mmap", "Parsers", "Unicode"]
git-tree-sha1 = "3c837543ddb02250ef42f4738347454f95079d4e"
uuid = "682c06a0-de6a-54ab-a142-c8b1cf79cde6"
version = "0.21.3"

[[deps.LibCURL]]
deps = ["LibCURL_jll", "MozillaCACerts_jll"]
uuid = "b27032c2-a3e7-50c8-80cd-2d36dbcbfd21"

[[deps.LibCURL_jll]]
deps = ["Artifacts", "LibSSH2_jll", "Libdl", "MbedTLS_jll", "Zlib_jll", "nghttp2_jll"]
uuid = "deac9b47-8bc7-5906-a0fe-35ac56dc84c0"

[[deps.LibGit2]]
deps = ["Base64", "NetworkOptions", "Printf", "SHA"]
uuid = "76f85450-5226-5b5a-8eaa-529ad045b433"

[[deps.LibSSH2_jll]]
deps = ["Artifacts", "Libdl", "MbedTLS_jll"]
uuid = "29816b5a-b9ab-546f-933c-edad1886dfa8"

[[deps.Libdl]]
uuid = "8f399da3-3557-5675-b5ff-fb832c97cbdb"

[[deps.LinearAlgebra]]
deps = ["Libdl", "libblastrampoline_jll"]
uuid = "37e2e46d-f89d-539d-b4ee-838fcccc9c8e"

[[deps.Logging]]
uuid = "56ddb016-857b-54e1-b83d-db4d58db5568"

[[deps.Markdown]]
deps = ["Base64"]
uuid = "d6f4376e-aef5-505a-96c1-9c027394607a"

[[deps.MbedTLS_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "c8ffd9c3-330d-5841-b78e-0817d7145fa1"

[[deps.Mmap]]
uuid = "a63ad114-7e13-5084-954f-fe012c677804"

[[deps.MozillaCACerts_jll]]
uuid = "14a3606d-f60d-562e-9121-12d972cd8159"

[[deps.NetworkOptions]]
uuid = "ca575930-c2e3-43a9-ace4-1e988b2c1908"

[[deps.OpenBLAS_jll]]
deps = ["Artifacts", "CompilerSupportLibraries_jll", "Libdl"]
uuid = "4536629a-c528-5b80-bd46-f80d51c5b363"

[[deps.Parsers]]
deps = ["Dates"]
git-tree-sha1 = "85b5da0fa43588c75bb1ff986493443f821c70b7"
uuid = "69de0a69-1ddd-5017-9359-2bf0b02dc9f0"
version = "2.2.3"

[[deps.Pkg]]
deps = ["Artifacts", "Dates", "Downloads", "LibGit2", "Libdl", "Logging", "Markdown", "Printf", "REPL", "Random", "SHA", "Serialization", "TOML", "Tar", "UUIDs", "p7zip_jll"]
uuid = "44cfe95a-1eb2-52ea-b672-e2afdf69b78f"

[[deps.PlutoUI]]
deps = ["AbstractPlutoDingetjes", "Base64", "ColorTypes", "Dates", "Hyperscript", "HypertextLiteral", "IOCapture", "InteractiveUtils", "JSON", "Logging", "Markdown", "Random", "Reexport", "UUIDs"]
git-tree-sha1 = "bf0a1121af131d9974241ba53f601211e9303a9e"
uuid = "7f904dfe-b85e-4ff6-b463-dae2292396a8"
version = "0.7.37"

[[deps.Printf]]
deps = ["Unicode"]
uuid = "de0858da-6303-5e67-8744-51eddeeeb8d7"

[[deps.REPL]]
deps = ["InteractiveUtils", "Markdown", "Sockets", "Unicode"]
uuid = "3fa0cd96-eef1-5676-8a61-b3b8758bbffb"

[[deps.Random]]
deps = ["SHA", "Serialization"]
uuid = "9a3f8284-a2c9-5f02-9a11-845980a1fd5c"

[[deps.Reexport]]
git-tree-sha1 = "45e428421666073eab6f2da5c9d310d99bb12f9b"
uuid = "189a3867-3050-52da-a836-e630ba90ab69"
version = "1.2.2"

[[deps.SHA]]
uuid = "ea8e919c-243c-51af-8825-aaa63cd721ce"

[[deps.Serialization]]
uuid = "9e88b42a-f829-5b0c-bbe9-9e923198166b"

[[deps.Sockets]]
uuid = "6462fe0b-24de-5631-8697-dd941f90decc"

[[deps.SparseArrays]]
deps = ["LinearAlgebra", "Random"]
uuid = "2f01184e-e22b-5df5-ae63-d93ebab69eaf"

[[deps.Statistics]]
deps = ["LinearAlgebra", "SparseArrays"]
uuid = "10745b16-79ce-11e8-11f9-7d13ad32a3b2"

[[deps.TOML]]
deps = ["Dates"]
uuid = "fa267f1f-6049-4f14-aa54-33bafae1ed76"

[[deps.Tar]]
deps = ["ArgTools", "SHA"]
uuid = "a4e569a6-e804-4fa4-b0f3-eef7a1d5b13e"

[[deps.Test]]
deps = ["InteractiveUtils", "Logging", "Random", "Serialization"]
uuid = "8dfed614-e22c-5e08-85e1-65c5234f0b40"

[[deps.UUIDs]]
deps = ["Random", "SHA"]
uuid = "cf7118a7-6976-5b1a-9a39-7adc72f591a4"

[[deps.Unicode]]
uuid = "4ec0a83e-493e-50e2-b9ac-8f72acf5a8f5"

[[deps.Zlib_jll]]
deps = ["Libdl"]
uuid = "83775a58-1f1d-513f-b197-d71354ab007a"

[[deps.libblastrampoline_jll]]
deps = ["Artifacts", "Libdl", "OpenBLAS_jll"]
uuid = "8e850b90-86db-534c-a0d3-1478176c7d93"

[[deps.nghttp2_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "8e850ede-7688-5339-a07c-302acd2aaf8d"

[[deps.p7zip_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "3f19e933-33d8-53b3-aaab-bd5110c3b7a0"
"""

# ╔═╡ Cell order:
# ╠═054454a0-ad17-11ec-3385-29ec65f21c33
# ╟─72ea7f70-ad12-11ec-32b3-7fcfb7de94a9
# ╟─b52c7910-ad12-11ec-3836-73322a4d09bf
# ╟─fe3a24d0-ad13-11ec-127e-b99341ce2d42
# ╟─fec1f270-ad13-11ec-1dc6-47c977b59d4d
# ╟─0c0cd9d0-ad15-11ec-38b8-596132c52440
# ╠═feda3562-ad13-11ec-3996-df8b9c71b329
# ╠═fef02e60-ad13-11ec-01c9-176af939a84e
# ╠═ff04eee0-ad13-11ec-2231-99e0a6f74daf
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
