% Class and various components
classdef className
	properties (Access = private)
	    evidence = [];
        MaxVol = 40;
        isTrue = false;
		guess;	% comment
	end
	methods
	    function obj = matlab_class(r,g,b)
	        obj.R = r;
	        obj.G = g;
	        obj.B = b;
	    end
	end
    methods (Static)
       function handleEvnt(src,~)
          if src.State
             disp('ToggledState is true')
          else
             disp('ToggledState is false')
          end
       end
    end
	events (GetAccess = protected, Hidden = false)
	   Update
	end
	enumeration
	   Monday, Tuesday, Wednesday, Thursday, Friday
	end
end

% Class with inheritance
classdef className < inherited.asset

end

% Class with complex inheritance
classdef className < inherited.asset & trust.member
	
end
  
% Class with attributes
classdef (CaseInsensitiveProperties, TruncatedProperties, ConstructOnLoad) className < inherited

end

% Class with complex attributes
classdef (CaseInsensitiveProperties='true', TruncatedProperties=true) LinkAxes < handle

end

% Class with description, undocumented feature
classdef (Description='A type of story.') MyFairyTaleClass

end

