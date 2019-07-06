function [labels] = fisher_classification(w, bias, feature_vec)

labels = sign(w'*feature_vec' - bias);
end

