function assertDifference(actual, expected, tol, actual_dtype, expected_dtype)
arguments
    actual
    expected
    tol            double = 1e-9
    actual_dtype   char = 'double'; % TBD, slightly difficult to use for casting here
    expected_dtype char = 'double';
end

assert( all( abs(actual - expected) < tol , 'all') );

end

