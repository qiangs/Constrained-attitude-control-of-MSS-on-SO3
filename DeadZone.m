function ZrU= DeadZone(r,u)
    ZrU = max(u-r,min(0,u+r));
end

