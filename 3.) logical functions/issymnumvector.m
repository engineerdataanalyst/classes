function bool = issymnumvector(a, options)
  % -----------------------------
  % - returns true if an array
  %   is a symbolic number vector
  %   with a specific length
  % -----------------------------
  
  %% check the input arguments
  arguments
    a;
    options.Len (1,1) double {mustBeInteger, mustBeNonnegative};
    options.CheckEmpty (1,1) logical;
    options.Type ...
    {mustBeTextScalar, ...
     mustBeMemberi(options.Type, ["positive" ...
                                  "positive or zero" ...
                                  "negative" ...
                                  "negative or zero"])};
  end
  %% check the array
  Args = namedargs2cell(options);
  bool = issymvector(a, Args{:}) && isallsymnum(a);
