"""
    line_length(f, x_start, x_end, steps=100)

Approximates the arc length of a line segment by treating the curve as a
sequence of linear lines and summing their lengths.

Arguments:
 - f: function that returns the arc
 - x_start: starting x value
 - x_end: ending x_value
 - steps: steps to take for accurace, more the steps greater the accuracy
"""
function line_length(f, x_start, x_end, steps = 100)
    x1 = x_start
    fx1 = f(x1)
    len = 0.0

    for step in 1:steps
        x2 = ((x_end - x_start) / steps) + x1
        fx2 = f(x2)
        len += hypot(x2 - x1, fx2 - fx1)

        x1 = x2
        fx1 = fx2
    end

    return len
end
