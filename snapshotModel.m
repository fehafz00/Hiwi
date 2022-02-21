

function snapshotModel(model)
open_system(model)
import slreportgen.report.*
r = Report(tempname, 'html');
D = Diagram(model);
D.SnapshotFormat = 'png';
add(r, D);
imshow(imread(D.Snapshot.Image.Content.Path));
close(r);
delete(r.OutputPath);
end