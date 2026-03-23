#set document(title: "ForgeBoard — User Manual", author: "Black Sphere Industries")
#set page(paper: "a4", margin: (top: 2.5cm, bottom: 2.5cm, left: 2cm, right: 2cm))
#set text(font: "New Computer Modern", size: 11pt)
#set heading(numbering: "1.1")

// Title page
#align(center)[
  #v(3cm)
  #text(size: 28pt, weight: "bold")[ForgeBoard]
  #v(0.5cm)
  #text(size: 16pt, fill: rgb("#666"))[User Manual]
  #v(1cm)
  #text(size: 12pt)[Black Sphere Industries]
  #v(0.3cm)
  #text(size: 11pt, fill: rgb("#999"))[Version 1.0 --- March 2026]
  #v(3cm)
]
#pagebreak()

#outline(title: "Table of Contents", indent: 1.5em)
#pagebreak()

= Introduction

ForgeBoard is an engineering-focused digital whiteboard application developed by Black Sphere Industries. It provides a vector-based infinite canvas for creating diagrams, sketches, and technical illustrations directly in the browser. The application combines freehand drawing, geometric shapes, smart connectors, engineering symbol libraries, chart and table editors, and LaTeX equation support into a single tool.

ForgeBoard is designed for engineering teams that need a collaborative whiteboard with structured diagramming capabilities, supporting use cases from system block diagrams and fishbone analyses to sprint retrospectives and kanban flows.

== Key Capabilities

- Infinite SVG canvas with pan, zoom, and minimap navigation
- 18 tools: Select, Pan, Pen, Highlighter, Eraser, Rectangle, Ellipse, Diamond, Line, Arrow, Connector, Text, Sticky Note, Image, Engineering Symbol, Math (LaTeX), Chart, and Table
- Freehand drawing with pressure sensitivity and smoothing
- Smart connectors with port-based routing (straight, elbow, curved)
- Engineering symbol library with categorized, searchable symbols
- Chart editor with 10 chart types (Bar, Horizontal Bar, Line, Area, Scatter, Bubble, Pie, Donut, Histogram, Waterfall) using Plotly.js
- Table editor with CSV import/export and multiple styling options
- LaTeX equation editor with KaTeX rendering and cheat sheet
- Layer management with visibility toggles
- Board templates: Blank Canvas, System Block Diagram, Fishbone/Ishikawa, Sprint Retrospective, Kanban Flow
- Multiple board management with project-based organization
- Export to JSON, PNG, and import from JSON
- Firebase Firestore sync with real-time persistence
- Demo mode with local storage fallback
- Three themes: Dark (default), Light, and E-Ink
- Full keyboard shortcuts
- Tablet-optimized toolbar for touch devices

= Getting Started

== Accessing ForgeBoard

ForgeBoard is accessible through the BSI Portal at blacksphereindustries.nl or directly via its standalone URL. When launched from the portal, authentication and theme settings are managed automatically.

== Demo Mode

Append `?demo=true` to the URL to use ForgeBoard without authentication. Demo mode stores all board data in localStorage using the DemoFirestore shim. A yellow banner at the top indicates demo mode is active, with buttons to reset data or exit demo mode.

== Creating Your First Board

+ Launch ForgeBoard (a blank canvas loads by default).
+ Select a tool from the sidebar (e.g., Rectangle).
+ Click and drag on the canvas to create an element.
+ Double-click an element to edit its text and properties.
+ Use connectors to link elements together.

= Features

== Drawing Tools

=== Pen Tool

The pen tool supports freehand drawing with three modes:

- *Pen* --- Standard ink strokes with variable width.
- *Marker* --- Broader strokes for emphasis.
- *Highlighter* --- Semi-transparent strokes for annotation.

Options include color selection, width (1--20px), opacity (5--100%), pressure sensitivity toggle, and stroke smoothing toggle.

=== Eraser Tool

Removes freehand strokes by proximity. The eraser radius is adjustable from 5 to 80 pixels.

== Shape Tools

=== Rectangle

Creates rectangular shapes with configurable fill, stroke color, stroke width, and dash pattern. Supports border radius for rounded corners.

=== Ellipse

Creates elliptical shapes with the same styling options as rectangles.

=== Diamond

Creates diamond (rhombus) shapes, commonly used in flowcharts for decision nodes.

=== Sticky Note

Creates colored sticky notes with editable text. Default yellow background, commonly used for brainstorming and retrospectives.

== Line and Connector Tools

=== Line

Draws straight lines between two points with configurable stroke and dash patterns.

=== Arrow

Draws lines with arrowhead markers, useful for directed relationships.

=== Smart Connector

Port-based connectors that attach to element edges and maintain connections when elements are moved. Supports three routing modes:

- *Straight* --- Direct line between ports.
- *Elbow* --- Right-angle routed path.
- *Curved* --- Smooth curved path between ports.

Connector ports appear on element edges (top, right, bottom, left) and snap when the cursor approaches.

== Content Tools

=== Text

Adds text elements with configurable font size and alignment. Double-click to edit.

=== Image

Embeds images (base64-encoded) on the canvas.

=== Engineering Symbol Library

A searchable, categorized library of engineering symbols. Symbols are organized into tabs by domain. Drag and drop symbols onto the canvas. The symbol panel is resizable and supports search filtering.

=== LaTeX Equation Editor

Insert mathematical equations rendered with KaTeX:

+ Select the Math tool and click on the canvas.
+ Enter LaTeX source code in the editor.
+ Preview updates in real time.
+ A cheat sheet provides common LaTeX expressions for reference.
+ Click "Insert Equation" to place the rendered equation on the canvas.

=== Chart Editor

Create data visualizations with 10 chart types:

- Bar, Horizontal Bar, Line, Area, Scatter, Bubble, Pie, Donut, Histogram, and Waterfall

The chart editor provides:
- An editable data table with add/remove row and column controls.
- CSV import and export.
- Real-time preview powered by Plotly.js.
- Charts are embedded as elements on the canvas.

=== Table Editor

Create structured tables on the canvas:

- Editable data table with row/column management.
- CSV import and export.
- Four style presets: Striped, Bordered, Minimal, and Dark Header.
- Live preview of the rendered table.

== Canvas Navigation

=== Pan and Zoom

- *Pan* --- Middle-click drag, or select the Pan tool and click-drag.
- *Zoom In/Out* --- Scroll wheel, or use the +/- buttons in the header.
- *Fit to Screen* --- Click the fit button to auto-zoom to show all elements.
- *Zoom Display* --- Shows the current zoom percentage in the header.

=== Minimap

A minimap in the bottom-right corner shows a thumbnail of the entire canvas with a viewport rectangle indicating the current view. Click on the minimap to navigate quickly.

=== Grid

Toggle a dot grid overlay for alignment. The grid can be turned on or off with the G key or the grid button in the header.

== Layer Management

The layers panel provides:

- Multiple named layers.
- Visibility toggle per layer (eye icon).
- Add new layers.
- Active layer selection --- new elements are placed on the active layer.

== Board Management

=== Creating Boards

Click "New Board" to create a board from one of five templates:

- *Blank Canvas* --- Empty starting point.
- *System Block Diagram* --- Pre-laid block diagram template.
- *Fishbone / Ishikawa* --- Cause-and-effect analysis template.
- *Sprint Retrospective* --- What went well / What to improve columns.
- *Kanban Flow* --- To Do / In Progress / Done workflow.

=== Renaming Boards

Click the board title in the header to open the rename dialog.

=== Project Organization

When connected to Firebase, boards can be organized by project. The project selector dropdown in the header filters boards by project.

== Element Properties

When elements are selected, the properties bar at the bottom shows:

- Fill color picker
- Stroke color picker
- Stroke width
- Font size (for text elements)
- Icon scale (for symbol elements)
- Opacity slider

== Context Menu

Right-click any element to access:

- Edit, duplicate, delete
- Bring to front / send to back
- Lock/unlock
- Copy/paste operations

All actions have keyboard shortcut equivalents.

== Export and Import

=== Export JSON

Saves the current board as a JSON file containing all elements, connectors, layers, and metadata.

=== Import JSON

Loads a previously exported JSON file, restoring the complete board state.

=== Export PNG

Renders the current canvas view as a PNG image for use in documents and presentations.

= User Interface

== Sidebar

The collapsible sidebar (56px collapsed, 240px expanded) contains all 18 tools organized into groups:

- *Pointer* --- Select, Pan
- *Draw* --- Pen, Highlighter, Eraser
- *Shapes* --- Rectangle, Ellipse, Diamond, Sticky
- *Lines* --- Line, Arrow, Connector
- *Content* --- Text, Image, Symbol, Math, Chart, Table

Click the collapse button at the bottom to toggle sidebar width.

== Header Bar

The header contains:

- Sidebar toggle
- Project selector (when authenticated)
- Board name (click to rename)
- Zoom controls (in, out, fit, percentage display)
- Undo/Redo buttons
- Export/Import buttons
- Grid toggle
- Layers toggle
- Theme toggle
- User avatar

== Tablet Mode

On screens narrower than 1024px or on touch devices, the sidebar is hidden and replaced by a fixed bottom toolbar with touch-optimized tool buttons.

== Themes

Three visual themes are available:

- *Dark* (default) --- Dark background (\#09090b) with amber accents.
- *Light* --- White background with blue accents, matching BSI light theme.
- *E-Ink* --- High-contrast black and white, optimized for e-ink displays. Disables shadows and reduces visual complexity.

= Workflows

== Creating a System Block Diagram

+ Create a new board using the "System Block Diagram" template.
+ Use Rectangle elements for system blocks.
+ Add text labels by double-clicking each block.
+ Use Smart Connectors to link blocks --- connectors snap to ports on element edges.
+ Add arrows for directed data flow.
+ Use engineering symbols from the library for specialized components.
+ Export as PNG for documentation.

== Conducting a Fishbone Analysis

+ Create a new board using the "Fishbone / Ishikawa" template.
+ The template provides the spine and category branches.
+ Add sticky notes to each branch with potential causes.
+ Use text elements for annotations.
+ Export the completed diagram as JSON for archival.

== Annotating an Engineering Drawing

+ Import an image of the engineering drawing.
+ Use the Pen tool to annotate with freehand marks.
+ Use the Highlighter to emphasize areas of interest.
+ Add text callouts with arrows pointing to relevant features.
+ Insert LaTeX equations for calculations.
+ Add a table with measurement data.

= Architecture

This section presents the UML diagrams for the ForgeBoard application.

== Architecture Overview

#figure(
  image("uml-architecture.svg", width: 100%),
  caption: [System architecture diagram showing ForgeBoard's component structure and integration points.]
)

== Sequence Diagram --- Main Workflow

#figure(
  image("uml-seq-main.svg", width: 100%),
  caption: [Sequence diagram showing the primary user interaction flow for creating and editing elements.]
)

== Sequence Diagram --- Secondary Workflows

#figure(
  image("uml-seq-secondary.svg", width: 100%),
  caption: [Sequence diagram covering board management, export/import, and collaboration workflows.]
)

== State Diagram

#figure(
  image("uml-states.svg", width: 100%),
  caption: [State diagram showing tool states, canvas modes, and modal interactions.]
)

= Configuration

== Firebase Integration

ForgeBoard uses Firebase Firestore for persistent storage and real-time synchronization. The Firebase configuration is received from the BSI portal via postMessage when embedded, or uses the default configuration in standalone mode.

== Keyboard Shortcuts

#table(
  columns: (1fr, 2fr),
  [*Shortcut*], [*Action*],
  [V], [Select tool],
  [H], [Pan tool],
  [P], [Pen tool],
  [E], [Eraser tool],
  [R], [Rectangle tool],
  [O], [Ellipse tool],
  [T], [Text tool],
  [S], [Sticky note],
  [L], [Line tool],
  [G], [Toggle grid],
  [Ctrl+Z], [Undo],
  [Ctrl+Shift+Z], [Redo],
  [Ctrl+C], [Copy],
  [Ctrl+V], [Paste],
  [Delete], [Delete selected],
  [Ctrl+A], [Select all],
)

== Demo Mode Configuration

In demo mode, board data is stored under `demo_db_` prefixed keys in localStorage. Reset demo data via the banner button or by clearing localStorage manually.

= Troubleshooting

== Elements Not Rendering

- Verify the browser supports SVG rendering.
- Check the layers panel --- the active layer may be hidden.
- Try toggling the grid to force a canvas refresh.

== Connectors Not Snapping

- Ensure the cursor is close to an element edge. Connector ports appear as dots on element borders.
- The target element must have ports enabled (most shapes have ports by default).

== Board Not Saving

- In demo mode, data persists in localStorage only. Clearing browser data will erase boards.
- In authenticated mode, verify Firebase connectivity and check the browser console for errors.
- Ensure the board has been modified after the initial load (auto-save triggers on changes).

== Performance on Large Boards

- Hide layers with many elements to reduce rendering load.
- Use the minimap for navigation instead of excessive panning.
- Export large boards to JSON as a backup before adding more elements.

== Theme Not Changing

- When embedded in the portal, theme is controlled by the parent. Local toggle is disabled.
- In standalone mode, use the moon icon button in the header to cycle themes.
