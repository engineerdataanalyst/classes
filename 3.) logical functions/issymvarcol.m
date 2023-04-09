function bool = issymvarcol(a, options)
  % --------------------------------------
  % - returns true if an array
  %   is a symbolic variable column vector
  %   with a specific length
  % --------------------------------------
  
  %% check the input arguments
  arguments
    a;
    options.Len (1,1) double {mustBeInteger, mustBeNonnegative};
  end
  %% check the array
  Args = namedargs2cell(options);
  bool = issymcol(a, Args{:}) && isallsymvar(a);
