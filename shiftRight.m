function shiftedSignal = shiftRight( signal, deltaTime )

    shiftedSignal = cat(2, signal(:,1)+deltaTime, signal(:,2)); %shifted x, unchanged y
end

