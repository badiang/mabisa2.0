<style>
    .modal-xxl {
        max-width: 95vw;
    }

    .file-preview {
        height: 700px;
    }

    .comments-container {
        height: 500px;
        overflow-y: auto;
    }
</style>

<div class="modal fade" id="commentModal" tabindex="-1" aria-labelledby="commentModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-xxl">
        <div class="modal-content">
            <div class="modal-header bg-primary text-white">
                <h5 class="modal-title" id="commentModalLabel">File & Comments</h5>
                <button type="button" class="close text-white" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>

            <div class="modal-body">
                <div class="row">
                    <div class="col-md-9">
                        <div class="border rounded p-3 bg-light file-preview">
                            <iframe id="fileDisplay" src="" class="w-100 h-100 border rounded"></iframe>
                        </div>
                    </div>

                    <div class="col-md-3">
                        <div class="border rounded p-3 bg-light mb-3 comments-container">
                            <h6 class="text-muted">Comments</h6>
                            <div id="commentsContainer">
                                <p class="text-muted">Loading comments...</p>
                            </div>
                        </div>

                        <?php if ($role === 'Barangay Admin'): ?>
                            <form method="post" action="../bar_assessment/admin_actions/add_comment.php">
                                <input type="hidden" name="file_id">
                                <input type="hidden" name="name">
                                <div class="form-group">
                                    <textarea class="form-control" id="commentText" name="commentText" rows="2"
                                        placeholder="Write your comment here..." required></textarea>
                                </div>
                                <div class="text-right">
                                    <button type="submit" class="btn btn-primary btn-block">Add Comment</button>
                                </div>
                            </form>

                            <div class="mt-2">
                                <form method="POST" action="admin_actions/change_status.php">
                                    <input type="hidden" name="file_id" id="approveFileId">
                                    <input type="hidden" name="action" value="approve">
                                    <button type="submit" class="btn btn-success btn-block">Approve</button>
                                </form>
                                <form method="POST" action="admin_actions/change_status.php">
                                    <input type="hidden" name="file_id" id="declineFileId">
                                    <input type="hidden" name="action" value="decline">
                                    <button type="submit" class="btn btn-danger btn-block">Decline</button>
                                </form>
                            </div>
                        <?php endif; ?>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
