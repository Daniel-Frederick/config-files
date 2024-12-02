function Prompt {
    # Get the name of the current directory
    $currentDirectory = Split-Path -Path (Get-Location) -Leaf
    
    # Initialize Git branch variable
    $gitBranch = ""
    
    # Check if Git is installed and the directory is a Git repo
    if ((Test-Path .git) -or (Get-Command git -ErrorAction SilentlyContinue)) {
        try {
            # Get the current branch name
            $gitBranch = git rev-parse --abbrev-ref HEAD 2>$null
            if ($gitBranch) {
                # Display the current directory in cyan
                Write-Host $currentDirectory -NoNewline -ForegroundColor Cyan
                
                # Display " on " in cyan
                Write-Host " on " -NoNewline -ForegroundColor Cyan
                
                # Display the branch name in the specified red color
                Write-Host $gitBranch -NoNewline -ForegroundColor ([System.ConsoleColor]::Red)
                
                # Display " -> " in cyan
                Write-Host " -> " -NoNewline -ForegroundColor Cyan
            }
            else {
                # If no branch name, display everything in cyan
                Write-Host "$currentDirectory -> " -NoNewline -ForegroundColor Cyan
            }
        } catch {
            # If there's an error, fall back to cyan prompt
            Write-Host "$currentDirectory -> " -NoNewline -ForegroundColor Cyan
        }
    }
    else {
        # If not in a Git repository, display in cyan
        Write-Host "$currentDirectory -> " -NoNewline -ForegroundColor Cyan
    }
    
    # Return a space to end the prompt correctly
    return " "
}
