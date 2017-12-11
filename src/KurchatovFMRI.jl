module KurchatovFMRI

export all
using NIfTI

# package code goes here

abstract type AbstractKData end

type KData{T} <: AbstractKData
    root_path    :: String;
    subject      :: Int16;
    pattern_data :: Regex;
    data         :: Union{NIfTI.NIVolume, Vector{NIfTI.NIVolume}}
    pattern_meta :: Regex;
    meta         :: T
end

function KData(conf_str)
    valid_config(conf_str) | error("Not a valid config")
    print("Hi")
end

valid_config(s) = length(s)

end # module
