[![Build Status](https://travis-ci.org/fuzzybear3965/TimeDomainReflectometryPeeling.jl.svg?branch=master)](https://travis-ci.org/fuzzybear3965/TimeDomainReflectometryPeeling.jl)
[![Build status](https://ci.appveyor.com/api/projects/status/rym1ijwldt575s52/branch/master?svg=true)](https://ci.appveyor.com/project/fuzzybear3965/timedomainreflectometrypeeling-jl/branch/master)
[![codecov](https://codecov.io/gh/fuzzybear3965/TimeDomainReflectometryPeeling.jl/branch/master/graph/badge.svg)](https://codecov.io/gh/fuzzybear3965/TimeDomainReflectometryPeeling.jl)
[![Coverage Status](https://coveralls.io/repos/github/fuzzybear3965/TimeDomainReflectometryPeeling.jl/badge.svg?branch=master)](https://coveralls.io/github/fuzzybear3965/TimeDomainReflectometryPeeling.jl?branch=master)

TimeDomainReflectometryPeeling.jl
=================================


TimeDomainReflectometryPeeling.jl is a Julia package for performing time-domain peeling of datasets.
Three functions are made available to the user in the API.

1. `reflectionCoeffecientsToReflectedVoltageSignal(::Vector{Float64}(n),::Int32(m))`

 Thus function takes a vector of n (relative) reflection coefficients, as might be
 generated by considering adjacent sections of impedance in a transmission line,
 and a number of m time steps. It returns a `Vector{Float64}(m)` of values. This
 data structure is the reflected voltage given m time steps and the associated n
 reflection planes.

1. `reflectedVoltageSignalToReflectionCoefficients(::Vector{Float64}(n))`

 This function takes in an n-time-step time-domain reflectometry waveform (normalized to unit
 input and ignoring the incident waveform shape) and returns the (relative)
 reflection coefficients associated with that waveform.

1. `relativeReflectionCoefficientsToAbsoluteImpedances(::Vector{Float64}(n),Float64(m))`

 This function takes as inputs an n-long vector of relative reflection coefficients and a reference
 impedance. It outputs the impedance profile corresponding to the (relative) reflection
 coefficients and the reference impedance. This utility is used to refer the
 chain of reflection coefficients back to the source.
