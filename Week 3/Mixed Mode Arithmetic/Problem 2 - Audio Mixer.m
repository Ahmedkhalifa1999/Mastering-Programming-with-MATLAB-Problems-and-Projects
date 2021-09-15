function mixed = mixit(audio, weights)
    audio = double(audio);
    audio = ((audio/65535) * 2) - 1;
    mixed = audio .* weights;
    mixed = sum(mixed, 2);
    norm = max(abs(mixed));
    if (norm > 1)
        mixed = (mixed/norm);
    end
end