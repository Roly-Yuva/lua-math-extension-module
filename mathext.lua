local M = {}

function M.round(n)
    if math.type(n) == "float" then
        local r
        local f = math.floor(n)
        local c = math.ceil(n)
        if n >= f + 0.5 then
            r = c
        elseif n < c - 0.5 then
            r = f
        end
        r = math.tointeger(r)
        return r
    else
        return n
    end
end

function M.fact(n)
    if math.type(n) == "float" then
        return error("expected int, got float")
    else
        if n == 0 then
            return 1
        else
            return n * M.fact(n - 1)
        end
    end
end

function M.perm(n, r)
    if math.type(n) == "float" or math.type(r) == "float" then
        return error("expected int, got float")
    else
        if r > n then
            return error("arg #1 < arg #2, arg #1 expected to be > arg #2")
        else
            r = n - r
            n = M.fact(n)
            r = M.fact(r)
            local prob = n / r
            prob = math.tointeger(prob)
            return prob
        end
    end
end

function M.comb(n, r)
    if math.type(n) == "float" or math.type(r) == "float" then
        return error("expected int, got float")
    else
        if r > n then
            return error("arg #1 < arg #2, arg #1 expected to be > arg #2")
        else
            local dif = n - r
            dif = M.fact(dif)
            n = M.fact(n)
            r = M.fact(r)
            r = r * dif
            local prob = n / r
            prob = math.tointeger(prob)
            return prob
        end
    end
end

return M