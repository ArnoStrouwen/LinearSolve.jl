module LinearSolve

using ArrayInterface: lu_instance
using Base: cache_dependencies, Bool
using LinearAlgebra
using SciMLBase: AbstractDiffEqOperator, AbstractLinearAlgorithm
using Setfield
using UnPack

# wrap
import Krylov
import KrylovKit
import IterativeSolvers

using Reexport
@reexport using SciMLBase

abstract type SciMLLinearSolveAlgorithm <: SciMLBase.AbstractLinearAlgorithm end

include("common.jl")
include("default.jl")
include("factorization.jl")
include("wrappers.jl")

export DefaultLinSolve
export LUFactorization, SVDFactorization, QRFactorization
export KrylovJL #, KrylovJL_CG, KrylovJL_GMRES, KrylovJL_BICGSTAB
export IterativeSolversJL #, IterativeSolversJL_CG, IterativeSolversJL_GMRES,
       #IterativeSolversJL_BICGSTAB
export KrylovKitJL #, KrylovKitJL_CG, KrylovKitJL_GMRES, KrylovKitJL_BICGSTAB

end
