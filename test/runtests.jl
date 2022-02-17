# runtests


for s in readdir("."; join=true, sort=true)
    f, e = splitext(s)
    if e == ".pdf" || e == ".vtu" || e == ".pvd" || e == ".res.csv"
        try
            rm(s)
        catch
            @warn "Failed to remove $s"
        end
    end
end

                    
for s in [
    "clamp_cyl_transient_time_step",
    "spherical_cap_expl_examples",
    "spherical_cap_expl_KE",
    "plate_expl_examples",
    "angle_bar_examples",
    "cracked_half_cylinder_examples",
    ]
    include(s * ".jl")
end
