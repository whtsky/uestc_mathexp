materialLength = 1200;
lengthA = 64;
lengthB = 85;
countA = 1000;
countB = 1500;

[n1, n2] = meshgrid(1:fix(materialLength/lengthB), 1:fix(materialLength/lengthA));
lengthNeeds = lengthA * n1 + lengthB * n2;
rest = materialLength - lengthNeeds;
resultPos = lengthNeeds <= materialLength & rest < lengthA & rest < lengthB;

results = [n1(resultPos) n2(resultPos) rest(resultPos)];
count = sum(resultPos(:));

for p=1:count
    g1 = ceil(countA/results(p, 1));
    g2 = ceil(countB/results(p, 2));
    g = max(g1, g2);
    results(p, 4) = materialLength * g - g1 * lengthA - g2 * lengthB;
    results(p, 5) = g;
end

disp('64cm     85cm      discard    total');
disp(sortrows(results, 5));