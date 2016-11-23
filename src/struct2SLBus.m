function New_Bus = struct2SLBus(struct_in)
%BUSOBJE Summary of this function goes here
%   Detailed explanation goes here
clear elems
signames = fieldnames(struct_in);


for idx = 1:length(signames)
    elems(idx) = Simulink.BusElement;
    elems(idx).Name = signames{idx};
    elems(idx).Dimensions = 1;
    elems(idx).DimensionsMode = 'Fixed';
    elems(idx).DataType = class(getfield(struct_in, signames{idx}));
    elems(idx).SampleTime = -1;
    elems(idx).Complexity = 'real';
    elems(idx).SamplingMode = 'Sample based';
    elems(idx).Min = [];
    elems(idx).Max = [];
    elems(idx).DocUnits = '';
    elems(idx).Description = '';
end

New_Bus = Simulink.Bus;
New_Bus.HeaderFile = '';
New_Bus.Description = '';
New_Bus.DataScope = 'Auto';
New_Bus.Alignment = -1;
New_Bus.Elements = elems;
clear elems;

end

